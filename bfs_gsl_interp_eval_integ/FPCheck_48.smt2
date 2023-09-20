(declare-fun x1_ack!446 () (_ BitVec 64))
(declare-fun x0_ack!452 () (_ BitVec 64))
(declare-fun x2_ack!447 () (_ BitVec 64))
(declare-fun b_ack!451 () (_ BitVec 64))
(declare-fun a_ack!450 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!448 () (_ BitVec 64))
(declare-fun y1_ack!449 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!452) ((_ to_fp 11 53) x1_ack!446)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!446) ((_ to_fp 11 53) x2_ack!447)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!446)
                       ((_ to_fp 11 53) x0_ack!452))
               ((_ to_fp 11 53) x0_ack!452))
       ((_ to_fp 11 53) x1_ack!446)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!446)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!446)
                       ((_ to_fp 11 53) x0_ack!452)))
       ((_ to_fp 11 53) x0_ack!452)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!447)
                       ((_ to_fp 11 53) x1_ack!446))
               ((_ to_fp 11 53) x1_ack!446))
       ((_ to_fp 11 53) x2_ack!447)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!447)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!447)
                       ((_ to_fp 11 53) x1_ack!446)))
       ((_ to_fp 11 53) x1_ack!446)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!446)
                    ((_ to_fp 11 53) x0_ack!452))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!447)
                    ((_ to_fp 11 53) x1_ack!446))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) b_ack!451))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) x0_ack!452))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!451) ((_ to_fp 11 53) x2_ack!447))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) b_ack!451))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) x0_ack!452))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!450) ((_ to_fp 11 53) x1_ack!446))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!451) ((_ to_fp 11 53) x0_ack!452)))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!449 y0_ack!448))

(check-sat)
(exit)
