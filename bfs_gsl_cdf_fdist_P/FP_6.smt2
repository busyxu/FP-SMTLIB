(declare-fun nu1_ack!168 () (_ BitVec 64))
(declare-fun nu2_ack!169 () (_ BitVec 64))
(declare-fun x_ack!170 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!169)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!168)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!170)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!169)
               ((_ to_fp 11 53) nu1_ack!168))))

(check-sat)
(exit)
