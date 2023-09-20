(declare-fun a_ack!606 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) a_ack!606))
       ((_ to_fp 11 53) #xc085eeaad5511c64)))

(check-sat)
(exit)
