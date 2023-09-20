(declare-fun d_ack!448 () (_ BitVec 64))
(declare-fun a_ack!449 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!447 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!448) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!449) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!448) ((_ to_fp 11 53) #x0024000000000001))))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!448) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) d_ack!448))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  a_ack!449
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!447)))

(check-sat)
(exit)
