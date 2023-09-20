(declare-fun x1_ack!413 () (_ BitVec 64))
(declare-fun x0_ack!417 () (_ BitVec 64))
(declare-fun x2_ack!414 () (_ BitVec 64))
(declare-fun b_ack!416 () (_ BitVec 64))
(declare-fun a_ack!415 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!417) ((_ to_fp 11 53) x1_ack!413)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!413) ((_ to_fp 11 53) x2_ack!414)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!413)
                       ((_ to_fp 11 53) x0_ack!417))
               ((_ to_fp 11 53) x0_ack!417))
       ((_ to_fp 11 53) x1_ack!413)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!413)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!413)
                       ((_ to_fp 11 53) x0_ack!417)))
       ((_ to_fp 11 53) x0_ack!417)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!414)
                       ((_ to_fp 11 53) x1_ack!413))
               ((_ to_fp 11 53) x1_ack!413))
       ((_ to_fp 11 53) x2_ack!414)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!414)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!414)
                       ((_ to_fp 11 53) x1_ack!413)))
       ((_ to_fp 11 53) x1_ack!413)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!413)
                    ((_ to_fp 11 53) x0_ack!417))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!414)
                    ((_ to_fp 11 53) x1_ack!413))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) b_ack!416))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) x0_ack!417))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!416) ((_ to_fp 11 53) x2_ack!414))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) b_ack!416))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) x0_ack!417))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) x1_ack!413))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!416) ((_ to_fp 11 53) x0_ack!417)))

(check-sat)
(exit)
