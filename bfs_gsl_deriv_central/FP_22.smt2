(declare-fun h_ack!288 () (_ BitVec 64))
(declare-fun x_ack!289 () (_ BitVec 64))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!289)
                    ((_ to_fp 11 53) h_ack!288))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
