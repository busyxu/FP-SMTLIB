(declare-fun b_ack!315 () (_ BitVec 64))
(declare-fun a_ack!316 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!316) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!315)
               ((_ to_fp 11 53) b_ack!315))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!316)
                       ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!316) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!316) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!316) ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!316 #x3fe0000000000000))

(check-sat)
(exit)
