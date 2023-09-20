(declare-fun nu1_ack!87 () (_ BitVec 64))
(declare-fun nu2_ack!88 () (_ BitVec 64))
(declare-fun x_ack!89 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!88)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!87)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!89)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!88)
               ((_ to_fp 11 53) nu1_ack!87))))

(check-sat)
(exit)
