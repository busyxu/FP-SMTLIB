(declare-fun epsabs_ack!222 () (_ BitVec 64))
(declare-fun epsrel_ack!223 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!224 () (_ BitVec 64))
(declare-fun b_ack!221 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!222)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!223)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!222) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!223)
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!221 a_ack!224))

(check-sat)
(exit)
