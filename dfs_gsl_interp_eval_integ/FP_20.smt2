(declare-fun x1_ack!448 () (_ BitVec 64))
(declare-fun x0_ack!452 () (_ BitVec 64))
(declare-fun x2_ack!449 () (_ BitVec 64))
(declare-fun b_ack!451 () (_ BitVec 64))
(declare-fun a_ack!450 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!452) ((_ to_fp 11 53) x1_ack!448)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!448) ((_ to_fp 11 53) x2_ack!449)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!448)
                       ((_ to_fp 11 53) x0_ack!452))
               ((_ to_fp 11 53) x0_ack!452))
       ((_ to_fp 11 53) x1_ack!448)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!448)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!448)
                       ((_ to_fp 11 53) x0_ack!452)))
       ((_ to_fp 11 53) x0_ack!452)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!449)
                       ((_ to_fp 11 53) x1_ack!448))
               ((_ to_fp 11 53) x1_ack!448))
       ((_ to_fp 11 53) x2_ack!449)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!449)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!449)
                       ((_ to_fp 11 53) x1_ack!448)))
       ((_ to_fp 11 53) x1_ack!448)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!448)
                    ((_ to_fp 11 53) x0_ack!452))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!449)
                    ((_ to_fp 11 53) x1_ack!448))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) b_ack!451))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) x0_ack!452))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!451) ((_ to_fp 11 53) x2_ack!449))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) b_ack!451))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) x0_ack!452))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) x1_ack!448))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!451) ((_ to_fp 11 53) x0_ack!452))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!451) ((_ to_fp 11 53) x1_ack!448)))
(assert (fp.gt ((_ to_fp 11 53) x1_ack!448) ((_ to_fp 11 53) b_ack!451)))

(check-sat)
(exit)
