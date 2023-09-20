(declare-fun x1_ack!7033 () (_ BitVec 64))
(declare-fun x0_ack!7037 () (_ BitVec 64))
(declare-fun x2_ack!7034 () (_ BitVec 64))
(declare-fun b_ack!7036 () (_ BitVec 64))
(declare-fun a_ack!7035 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7037) ((_ to_fp 11 53) x1_ack!7033)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7033) ((_ to_fp 11 53) x2_ack!7034)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7033)
                       ((_ to_fp 11 53) x0_ack!7037))
               ((_ to_fp 11 53) x0_ack!7037))
       ((_ to_fp 11 53) x1_ack!7033)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7033)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7033)
                       ((_ to_fp 11 53) x0_ack!7037)))
       ((_ to_fp 11 53) x0_ack!7037)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7034)
                       ((_ to_fp 11 53) x1_ack!7033))
               ((_ to_fp 11 53) x1_ack!7033))
       ((_ to_fp 11 53) x2_ack!7034)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7034)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7034)
                       ((_ to_fp 11 53) x1_ack!7033)))
       ((_ to_fp 11 53) x1_ack!7033)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7033)
                    ((_ to_fp 11 53) x0_ack!7037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7034)
                    ((_ to_fp 11 53) x1_ack!7033))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7035) ((_ to_fp 11 53) b_ack!7036))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7035) ((_ to_fp 11 53) x0_ack!7037))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7036) ((_ to_fp 11 53) x2_ack!7034))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7035) ((_ to_fp 11 53) b_ack!7036))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7035) ((_ to_fp 11 53) x0_ack!7037))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7035) ((_ to_fp 11 53) x1_ack!7033))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7036) ((_ to_fp 11 53) x0_ack!7037))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7036) ((_ to_fp 11 53) x1_ack!7033)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7033) ((_ to_fp 11 53) b_ack!7036))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7033)
                    ((_ to_fp 11 53) x0_ack!7037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7034)
                    ((_ to_fp 11 53) x1_ack!7033))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
