(declare-fun x1_ack!6175 () (_ BitVec 64))
(declare-fun x0_ack!6179 () (_ BitVec 64))
(declare-fun x2_ack!6176 () (_ BitVec 64))
(declare-fun b_ack!6178 () (_ BitVec 64))
(declare-fun a_ack!6177 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6179) ((_ to_fp 11 53) x1_ack!6175)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6175) ((_ to_fp 11 53) x2_ack!6176)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6175)
                       ((_ to_fp 11 53) x0_ack!6179))
               ((_ to_fp 11 53) x0_ack!6179))
       ((_ to_fp 11 53) x1_ack!6175)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6175)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6175)
                       ((_ to_fp 11 53) x0_ack!6179)))
       ((_ to_fp 11 53) x0_ack!6179)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6176)
                       ((_ to_fp 11 53) x1_ack!6175))
               ((_ to_fp 11 53) x1_ack!6175))
       ((_ to_fp 11 53) x2_ack!6176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6176)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6176)
                       ((_ to_fp 11 53) x1_ack!6175)))
       ((_ to_fp 11 53) x1_ack!6175)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6175)
                    ((_ to_fp 11 53) x0_ack!6179))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6176)
                    ((_ to_fp 11 53) x1_ack!6175))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6177) ((_ to_fp 11 53) b_ack!6178))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6177) ((_ to_fp 11 53) x0_ack!6179))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6178) ((_ to_fp 11 53) x2_ack!6176))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6177) ((_ to_fp 11 53) b_ack!6178))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6177) ((_ to_fp 11 53) x0_ack!6179))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6177) ((_ to_fp 11 53) x1_ack!6175))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6178) ((_ to_fp 11 53) x0_ack!6179))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6178) ((_ to_fp 11 53) x1_ack!6175)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6175) ((_ to_fp 11 53) b_ack!6178))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6175)
                    ((_ to_fp 11 53) x0_ack!6179))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
