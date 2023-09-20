(declare-fun b_ack!1182 () (_ BitVec 64))
(declare-fun a_ack!1183 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1183 #x00000000)))
(assert (not (= #x00000000 a_ack!1183)))
(assert (not (= #x00000001 a_ack!1183)))
(assert (not (bvslt #x000186a0 a_ack!1183)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1182)
                    ((_ to_fp 11 53) b_ack!1182))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!1182))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) b_ack!1182)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!1182))
               ((_ to_fp 11 53) b_ack!1182))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1182)
                    ((_ to_fp 11 53) b_ack!1182))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1182) ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
