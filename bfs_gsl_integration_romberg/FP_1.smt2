(declare-fun epsabs_ack!46 () (_ BitVec 64))
(declare-fun epsrel_ack!47 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!46)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!47)
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
