(declare-fun d_ack!177 () (_ BitVec 64))
(declare-fun a_ack!178 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!176 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!178) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!177) ((_ to_fp 11 53) #x0024000000000001))))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) d_ack!177))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!178)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!176))
  #x0000000000000000))

(check-sat)
(exit)
