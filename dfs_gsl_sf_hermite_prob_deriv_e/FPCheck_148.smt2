(declare-fun b_ack!849 () (_ BitVec 32))
(declare-fun a_ack!851 () (_ BitVec 32))
(declare-fun c_ack!850 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!849 #x00000000)))
(assert (not (bvslt a_ack!851 #x00000000)))
(assert (not (bvslt b_ack!849 a_ack!851)))
(assert (not (bvult b_ack!849 a_ack!851)))
(assert (not (= a_ack!851 b_ack!849)))
(assert (= #x00000000 a_ack!851))
(assert (bvult a_ack!851 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!851)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!851)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!849 a_ack!851) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!849 a_ack!851))))
(assert (not (= #x00000001 (bvsub b_ack!849 a_ack!851))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!850) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!850))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!849 a_ack!851)))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!850))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!850))))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!850)
                                   ((_ to_fp 11 53) c_ack!850))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!850)
                 ((_ to_fp 11 53) c_ack!850)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!850)
                           ((_ to_fp 11 53) c_ack!850))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!850)
                                   ((_ to_fp 11 53) c_ack!850))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000002 (bvsub b_ack!849 a_ack!851)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!850)
                                   ((_ to_fp 11 53) c_ack!850))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!850))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!850))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 c_ack!850))

(check-sat)
(exit)
