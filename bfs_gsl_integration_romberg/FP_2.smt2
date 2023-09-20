(declare-fun epsabs_ack!63 () (_ BitVec 64))
(declare-fun epsrel_ack!64 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!63)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!64)
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
