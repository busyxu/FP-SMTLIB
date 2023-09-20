(declare-fun c_ack!212 () (_ BitVec 64))
(declare-fun a_ack!213 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!213) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!213) ((_ to_fp 11 53) #xc076232bdd7abcd2))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!213 (CF_log (fp.abs ((_ to_fp 11 53) c_ack!212)))))

(check-sat)
(exit)
