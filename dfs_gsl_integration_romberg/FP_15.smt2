(declare-fun epsabs_ack!307 () (_ BitVec 64))
(declare-fun epsrel_ack!308 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!307)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!308)
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
