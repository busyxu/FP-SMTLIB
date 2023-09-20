(declare-fun x1_ack!7902 () (_ BitVec 64))
(declare-fun x0_ack!7906 () (_ BitVec 64))
(declare-fun x2_ack!7903 () (_ BitVec 64))
(declare-fun b_ack!7905 () (_ BitVec 64))
(declare-fun a_ack!7904 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7906) ((_ to_fp 11 53) x1_ack!7902)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7902) ((_ to_fp 11 53) x2_ack!7903)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7902)
                       ((_ to_fp 11 53) x0_ack!7906))
               ((_ to_fp 11 53) x0_ack!7906))
       ((_ to_fp 11 53) x1_ack!7902)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7902)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7902)
                       ((_ to_fp 11 53) x0_ack!7906)))
       ((_ to_fp 11 53) x0_ack!7906)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7903)
                       ((_ to_fp 11 53) x1_ack!7902))
               ((_ to_fp 11 53) x1_ack!7902))
       ((_ to_fp 11 53) x2_ack!7903)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7903)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7903)
                       ((_ to_fp 11 53) x1_ack!7902)))
       ((_ to_fp 11 53) x1_ack!7902)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7902)
                    ((_ to_fp 11 53) x0_ack!7906))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7903)
                    ((_ to_fp 11 53) x1_ack!7902))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7904) ((_ to_fp 11 53) b_ack!7905))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7904) ((_ to_fp 11 53) x0_ack!7906))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7905) ((_ to_fp 11 53) x2_ack!7903))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7904) ((_ to_fp 11 53) b_ack!7905))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7904) ((_ to_fp 11 53) x0_ack!7906))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7904) ((_ to_fp 11 53) x1_ack!7902))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7905) ((_ to_fp 11 53) x0_ack!7906))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7905) ((_ to_fp 11 53) x1_ack!7902)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7902) ((_ to_fp 11 53) b_ack!7905))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7902)
                    ((_ to_fp 11 53) x0_ack!7906))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x2_ack!7903)
                               ((_ to_fp 11 53) x1_ack!7902))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
