(declare-fun epsabs_ack!101 () (_ BitVec 64))
(declare-fun epsrel_ack!102 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!101)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!102)
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
