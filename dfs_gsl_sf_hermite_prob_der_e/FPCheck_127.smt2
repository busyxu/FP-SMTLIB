(declare-fun b_ack!711 () (_ BitVec 32))
(declare-fun a_ack!713 () (_ BitVec 32))
(declare-fun c_ack!712 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!711 #x00000000)))
(assert (not (bvslt a_ack!713 #x00000000)))
(assert (not (bvslt b_ack!711 a_ack!713)))
(assert (not (bvult b_ack!711 a_ack!713)))
(assert (not (= a_ack!713 b_ack!711)))
(assert (= #x00000000 a_ack!713))
(assert (bvult a_ack!713 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!713)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!713)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!711 a_ack!713) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!711 a_ack!713))))
(assert (not (= #x00000001 (bvsub b_ack!711 a_ack!713))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!712) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!712))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!711 a_ack!713)))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!712))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!712))))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!712)
                                   ((_ to_fp 11 53) c_ack!712))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!712)
                 ((_ to_fp 11 53) c_ack!712)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!712)
                           ((_ to_fp 11 53) c_ack!712))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!712)
                                   ((_ to_fp 11 53) c_ack!712))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000002 (bvsub b_ack!711 a_ack!713)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!712)
                                   ((_ to_fp 11 53) c_ack!712))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!712))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!712))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_OVERFLOW
  c_ack!712
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!712)
                  ((_ to_fp 11 53) c_ack!712))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
