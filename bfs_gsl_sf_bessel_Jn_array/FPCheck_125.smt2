(declare-fun a_ack!670 () (_ BitVec 32))
(declare-fun b_ack!668 () (_ BitVec 32))
(declare-fun c_ack!669 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!670 #x00000000)))
(assert (not (bvslt b_ack!668 a_ack!670)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!669) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!668) #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!669) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvand (bvadd #x00000001 b_ack!668) #x00000001))))
(assert (not (= #xffffffff b_ack!668)))
(assert (not (= #x00000000 b_ack!668)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) c_ack!669))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) c_ack!669)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!669))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!669)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) c_ack!669)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) c_ack!669)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) c_ack!669)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!669))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!669)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) c_ack!669)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) c_ack!669)))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!668))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
