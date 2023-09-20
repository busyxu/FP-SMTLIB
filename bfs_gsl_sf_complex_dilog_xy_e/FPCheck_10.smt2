(declare-fun b_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun a_ack!28 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!28)
                  ((_ to_fp 11 53) a_ack!28))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!27)
                  ((_ to_fp 11 53) b_ack!27)))
  #x3ff0000000000000))

(check-sat)
(exit)
