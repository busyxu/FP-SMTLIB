(declare-fun x1_ack!2364 () (_ BitVec 64))
(declare-fun x0_ack!2368 () (_ BitVec 64))
(declare-fun x2_ack!2365 () (_ BitVec 64))
(declare-fun b_ack!2367 () (_ BitVec 64))
(declare-fun a_ack!2366 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2368) ((_ to_fp 11 53) x1_ack!2364)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2364) ((_ to_fp 11 53) x2_ack!2365)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2364)
                       ((_ to_fp 11 53) x0_ack!2368))
               ((_ to_fp 11 53) x0_ack!2368))
       ((_ to_fp 11 53) x1_ack!2364)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2364)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2364)
                       ((_ to_fp 11 53) x0_ack!2368)))
       ((_ to_fp 11 53) x0_ack!2368)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2365)
                       ((_ to_fp 11 53) x1_ack!2364))
               ((_ to_fp 11 53) x1_ack!2364))
       ((_ to_fp 11 53) x2_ack!2365)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2365)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2365)
                       ((_ to_fp 11 53) x1_ack!2364)))
       ((_ to_fp 11 53) x1_ack!2364)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2364)
                    ((_ to_fp 11 53) x0_ack!2368))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2365)
                    ((_ to_fp 11 53) x1_ack!2364))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2366) ((_ to_fp 11 53) b_ack!2367))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2366) ((_ to_fp 11 53) x0_ack!2368))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2367) ((_ to_fp 11 53) x2_ack!2365))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2366) ((_ to_fp 11 53) b_ack!2367))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2366) ((_ to_fp 11 53) x0_ack!2368))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2366) ((_ to_fp 11 53) x1_ack!2364)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2364) ((_ to_fp 11 53) a_ack!2366))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2367) ((_ to_fp 11 53) x1_ack!2364))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2367) ((_ to_fp 11 53) x2_ack!2365))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2365)
                    ((_ to_fp 11 53) x1_ack!2364))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
