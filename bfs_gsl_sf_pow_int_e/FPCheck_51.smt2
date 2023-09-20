(declare-fun b_ack!224 () (_ BitVec 32))
(declare-fun a_ack!225 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt b_ack!224 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 b_ack!224) #x00000001))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvsub #x00000000 b_ack!224)) #b1)
                (concat #b1 ((_ extract 31 1) (bvsub #x00000000 b_ack!224)))
                (concat #b0 ((_ extract 31 1) (bvsub #x00000000 b_ack!224))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvsub #x00000000 b_ack!224)) #b1)
                (concat #b1 ((_ extract 31 1) (bvsub #x00000000 b_ack!224)))
                (concat #b0 ((_ extract 31 1) (bvsub #x00000000 b_ack!224))))))
  (not (= #x00000000 (bvand a!1 #x00000001)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!225)))
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!225))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!225)))))

(check-sat)
(exit)
