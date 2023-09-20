(declare-fun b_ack!684 () (_ BitVec 32))
(declare-fun a_ack!686 () (_ BitVec 32))
(declare-fun c_ack!685 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!684 #x00000000)))
(assert (not (bvslt a_ack!686 #x00000000)))
(assert (not (bvslt b_ack!684 a_ack!686)))
(assert (not (bvult b_ack!684 a_ack!686)))
(assert (not (= a_ack!686 b_ack!684)))
(assert (= #x00000000 a_ack!686))
(assert (bvult a_ack!686 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!686)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!686)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!684 a_ack!686) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!684 a_ack!686))))
(assert (not (= #x00000001 (bvsub b_ack!684 a_ack!686))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!685) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!685))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!684 a_ack!686)))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!685))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!685))))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!685)
                                   ((_ to_fp 11 53) c_ack!685))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!685)
                 ((_ to_fp 11 53) c_ack!685)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!685)
                           ((_ to_fp 11 53) c_ack!685))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!685)
                                   ((_ to_fp 11 53) c_ack!685))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!685))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!685))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
