(declare-fun d_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!31 () (_ BitVec 32))
(declare-fun a_ack!33 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!32) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!33)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!31))
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!31)))

(check-sat)
(exit)
