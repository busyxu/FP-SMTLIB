(declare-fun b_ack!2425 () (_ BitVec 64))
(declare-fun a_ack!2426 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2425) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2425) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2426) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2426) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2425) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!2426))
  b_ack!2425))

(check-sat)
(exit)
