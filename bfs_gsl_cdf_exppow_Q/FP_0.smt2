(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun x_ack!17 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!17)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!16)
                 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
