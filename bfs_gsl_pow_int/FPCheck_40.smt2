(declare-fun n_ack!177 () (_ BitVec 32))
(declare-fun x_ack!178 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt n_ack!177 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 n_ack!177) #x00000001))))
(assert (let ((a!1 (= #x00000000
              (concat #b0 ((_ extract 31 1) (bvsub #x00000000 n_ack!177))))))
  (not a!1)))
(assert (let ((a!1 (bvand (concat #b0 ((_ extract 31 1) (bvsub #x00000000 n_ack!177)))
                  #x00000001)))
  (not (= #x00000000 a!1))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_ack!178)))
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_ack!178))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) x_ack!178)))))

(check-sat)
(exit)
