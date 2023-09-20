(declare-fun a_ack!447 () (_ BitVec 32))
(declare-fun b_ack!444 () (_ BitVec 32))
(declare-fun c_ack!445 () (_ BitVec 64))
(declare-fun d_ack!446 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!447 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!447) b_ack!444)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!445) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!446) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvule (bvadd a_ack!447 b_ack!444) #x000000aa))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!447 b_ack!444))))))
  (bvult #x0000000000000000 a!1)))
(assert (let ((a!1 (bvadd #x0000000000000008
                  (bvmul #x0000000000000018
                         (concat #x00000000 (bvadd a_ack!447 b_ack!444))))))
  (bvult a!1 #x0000000000001001)))
(assert (not (bvule (bvadd #xffffffff (bvsub a_ack!447 b_ack!444)) #x000000aa)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff (bvsub a_ack!447 b_ack!444)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff (bvsub a_ack!447 b_ack!444)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff (bvsub a_ack!447 b_ack!444)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.geq a!1 ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvadd #xffffffff (bvsub a_ack!447 b_ack!444)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_ACCURACY
    #x40852429b6c30b05
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
