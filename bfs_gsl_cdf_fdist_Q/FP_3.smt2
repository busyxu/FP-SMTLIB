(declare-fun nu1_ack!90 () (_ BitVec 64))
(declare-fun nu2_ack!91 () (_ BitVec 64))
(declare-fun x_ack!92 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!91)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!90)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!92)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!91)
                    ((_ to_fp 11 53) nu1_ack!90)))))

(check-sat)
(exit)
