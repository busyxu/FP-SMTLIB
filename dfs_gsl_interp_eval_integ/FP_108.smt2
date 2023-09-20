(declare-fun x1_ack!6522 () (_ BitVec 64))
(declare-fun x0_ack!6526 () (_ BitVec 64))
(declare-fun x2_ack!6523 () (_ BitVec 64))
(declare-fun b_ack!6525 () (_ BitVec 64))
(declare-fun a_ack!6524 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6526) ((_ to_fp 11 53) x1_ack!6522)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6522) ((_ to_fp 11 53) x2_ack!6523)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6522)
                       ((_ to_fp 11 53) x0_ack!6526))
               ((_ to_fp 11 53) x0_ack!6526))
       ((_ to_fp 11 53) x1_ack!6522)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6522)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6522)
                       ((_ to_fp 11 53) x0_ack!6526)))
       ((_ to_fp 11 53) x0_ack!6526)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6523)
                       ((_ to_fp 11 53) x1_ack!6522))
               ((_ to_fp 11 53) x1_ack!6522))
       ((_ to_fp 11 53) x2_ack!6523)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6523)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6523)
                       ((_ to_fp 11 53) x1_ack!6522)))
       ((_ to_fp 11 53) x1_ack!6522)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6522)
                    ((_ to_fp 11 53) x0_ack!6526))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6523)
                    ((_ to_fp 11 53) x1_ack!6522))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6524) ((_ to_fp 11 53) b_ack!6525))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6524) ((_ to_fp 11 53) x0_ack!6526))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6525) ((_ to_fp 11 53) x2_ack!6523))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6524) ((_ to_fp 11 53) b_ack!6525))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6524) ((_ to_fp 11 53) x0_ack!6526))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6524) ((_ to_fp 11 53) x1_ack!6522)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6522) ((_ to_fp 11 53) a_ack!6524))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6525) ((_ to_fp 11 53) x1_ack!6522))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6525) ((_ to_fp 11 53) x2_ack!6523))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6523)
                    ((_ to_fp 11 53) x1_ack!6522))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
