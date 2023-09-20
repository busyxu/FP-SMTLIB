(declare-fun a_ack!28 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!28)
                     ((_ to_fp 11 53) a_ack!28))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!28)
                ((_ to_fp 11 53) a_ack!28))
        ((_ to_fp 11 53) #x3feffffff8000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!28)
          ((_ to_fp 11 53) a_ack!28))))

(check-sat)
(exit)
