(declare-fun b_ack!423 () (_ BitVec 64))
(declare-fun a_ack!424 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!423) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!423) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!424) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!424)
                       ((_ to_fp 11 53) b_ack!423)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!423) ((_ to_fp 11 53) #x403205966f2b4f12))))
(assert (FPCHECK_FADD_UNDERFLOW (fp.abs ((_ to_fp 11 53) b_ack!423)) #x3ff0000000000000))

(check-sat)
(exit)
