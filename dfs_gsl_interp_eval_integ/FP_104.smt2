(declare-fun x1_ack!6251 () (_ BitVec 64))
(declare-fun x0_ack!6255 () (_ BitVec 64))
(declare-fun x2_ack!6252 () (_ BitVec 64))
(declare-fun b_ack!6254 () (_ BitVec 64))
(declare-fun a_ack!6253 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6255) ((_ to_fp 11 53) x1_ack!6251)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6251) ((_ to_fp 11 53) x2_ack!6252)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6251)
                       ((_ to_fp 11 53) x0_ack!6255))
               ((_ to_fp 11 53) x0_ack!6255))
       ((_ to_fp 11 53) x1_ack!6251)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6251)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6251)
                       ((_ to_fp 11 53) x0_ack!6255)))
       ((_ to_fp 11 53) x0_ack!6255)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6252)
                       ((_ to_fp 11 53) x1_ack!6251))
               ((_ to_fp 11 53) x1_ack!6251))
       ((_ to_fp 11 53) x2_ack!6252)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6252)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6252)
                       ((_ to_fp 11 53) x1_ack!6251)))
       ((_ to_fp 11 53) x1_ack!6251)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6251)
                    ((_ to_fp 11 53) x0_ack!6255))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6252)
                    ((_ to_fp 11 53) x1_ack!6251))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6253) ((_ to_fp 11 53) b_ack!6254))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6253) ((_ to_fp 11 53) x0_ack!6255))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6254) ((_ to_fp 11 53) x2_ack!6252))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6253) ((_ to_fp 11 53) b_ack!6254))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6253) ((_ to_fp 11 53) x0_ack!6255))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6253) ((_ to_fp 11 53) x1_ack!6251)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6251) ((_ to_fp 11 53) a_ack!6253))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6254) ((_ to_fp 11 53) x1_ack!6251))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6254) ((_ to_fp 11 53) x2_ack!6252))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6252)
                    ((_ to_fp 11 53) x1_ack!6251))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
