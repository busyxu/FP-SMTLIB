(declare-fun x1_ack!199 () (_ BitVec 64))
(declare-fun x0_ack!201 () (_ BitVec 64))
(declare-fun x2_ack!200 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!201) ((_ to_fp 11 53) x1_ack!199)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!199) ((_ to_fp 11 53) x2_ack!200)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!199)
                       ((_ to_fp 11 53) x0_ack!201))
               ((_ to_fp 11 53) x0_ack!201))
       ((_ to_fp 11 53) x1_ack!199)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!199)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!199)
                       ((_ to_fp 11 53) x0_ack!201)))
       ((_ to_fp 11 53) x0_ack!201)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!200)
                       ((_ to_fp 11 53) x1_ack!199))
               ((_ to_fp 11 53) x1_ack!199))
       ((_ to_fp 11 53) x2_ack!200)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!200)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!200)
                       ((_ to_fp 11 53) x1_ack!199)))
       ((_ to_fp 11 53) x1_ack!199)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!199)
                    ((_ to_fp 11 53) x0_ack!201))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!200)
                    ((_ to_fp 11 53) x1_ack!199))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
