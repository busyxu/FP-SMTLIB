(declare-fun x1_ack!443 () (_ BitVec 64))
(declare-fun x0_ack!447 () (_ BitVec 64))
(declare-fun x2_ack!444 () (_ BitVec 64))
(declare-fun b_ack!446 () (_ BitVec 64))
(declare-fun a_ack!445 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!447) ((_ to_fp 11 53) x1_ack!443)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!443) ((_ to_fp 11 53) x2_ack!444)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!443)
                       ((_ to_fp 11 53) x0_ack!447))
               ((_ to_fp 11 53) x0_ack!447))
       ((_ to_fp 11 53) x1_ack!443)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!443)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!443)
                       ((_ to_fp 11 53) x0_ack!447)))
       ((_ to_fp 11 53) x0_ack!447)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!444)
                       ((_ to_fp 11 53) x1_ack!443))
               ((_ to_fp 11 53) x1_ack!443))
       ((_ to_fp 11 53) x2_ack!444)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!444)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!444)
                       ((_ to_fp 11 53) x1_ack!443)))
       ((_ to_fp 11 53) x1_ack!443)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!443)
                    ((_ to_fp 11 53) x0_ack!447))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!444)
                    ((_ to_fp 11 53) x1_ack!443))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!445) ((_ to_fp 11 53) b_ack!446))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!445) ((_ to_fp 11 53) x0_ack!447))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!446) ((_ to_fp 11 53) x2_ack!444))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!445) ((_ to_fp 11 53) b_ack!446))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!445) ((_ to_fp 11 53) x0_ack!447))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!445) ((_ to_fp 11 53) x1_ack!443))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!446) ((_ to_fp 11 53) x0_ack!447))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!446) ((_ to_fp 11 53) x1_ack!443)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!443) ((_ to_fp 11 53) b_ack!446))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!443 x0_ack!447))

(check-sat)
(exit)
