(declare-fun a_ack!633 () (_ BitVec 64))
(declare-fun c_ack!631 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!632 () (_ BitVec 64))
(declare-fun b_ack!630 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!633) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!631) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!633))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!631))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!630)
                  ((_ to_fp 11 53) c_ack!631)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!632)
                  ((_ to_fp 11 53) a_ack!633)))))

(check-sat)
(exit)
