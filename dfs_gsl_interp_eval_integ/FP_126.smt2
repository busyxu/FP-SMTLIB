(declare-fun x1_ack!7569 () (_ BitVec 64))
(declare-fun x0_ack!7573 () (_ BitVec 64))
(declare-fun x2_ack!7570 () (_ BitVec 64))
(declare-fun b_ack!7572 () (_ BitVec 64))
(declare-fun a_ack!7571 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7573) ((_ to_fp 11 53) x1_ack!7569)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7569) ((_ to_fp 11 53) x2_ack!7570)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7569)
                       ((_ to_fp 11 53) x0_ack!7573))
               ((_ to_fp 11 53) x0_ack!7573))
       ((_ to_fp 11 53) x1_ack!7569)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7569)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7569)
                       ((_ to_fp 11 53) x0_ack!7573)))
       ((_ to_fp 11 53) x0_ack!7573)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7570)
                       ((_ to_fp 11 53) x1_ack!7569))
               ((_ to_fp 11 53) x1_ack!7569))
       ((_ to_fp 11 53) x2_ack!7570)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7570)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7570)
                       ((_ to_fp 11 53) x1_ack!7569)))
       ((_ to_fp 11 53) x1_ack!7569)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7569)
                    ((_ to_fp 11 53) x0_ack!7573))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7570)
                    ((_ to_fp 11 53) x1_ack!7569))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7571) ((_ to_fp 11 53) b_ack!7572))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7571) ((_ to_fp 11 53) x0_ack!7573))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7572) ((_ to_fp 11 53) x2_ack!7570))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7571) ((_ to_fp 11 53) b_ack!7572))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7571) ((_ to_fp 11 53) x0_ack!7573))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7571) ((_ to_fp 11 53) x1_ack!7569))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7572) ((_ to_fp 11 53) x0_ack!7573)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7569)
                    ((_ to_fp 11 53) x0_ack!7573))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
