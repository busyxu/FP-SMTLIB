(declare-fun b_ack!182 () (_ BitVec 32))
(declare-fun a_ack!183 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt b_ack!182 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!183) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 (bvand (bvsub #x00000000 b_ack!182) #x00000001)))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvsub #x00000000 b_ack!182)) #b1)
                (concat #b1 ((_ extract 31 1) (bvsub #x00000000 b_ack!182)))
                (concat #b0 ((_ extract 31 1) (bvsub #x00000000 b_ack!182))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) (bvsub #x00000000 b_ack!182)) #b1)
                (concat #b1 ((_ extract 31 1) (bvsub #x00000000 b_ack!182)))
                (concat #b0 ((_ extract 31 1) (bvsub #x00000000 b_ack!182))))))
  (= #x00000000 (bvand a!1 #x00000001))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!183))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!183)))))
  (FPCHECK_FMUL_ACCURACY a!1 a!1)))

(check-sat)
(exit)
