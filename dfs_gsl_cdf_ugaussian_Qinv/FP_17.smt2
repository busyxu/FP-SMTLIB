(declare-fun Q_ack!102 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) Q_ack!102) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
