(declare-fun x1_ack!554 () (_ BitVec 64))
(declare-fun x0_ack!558 () (_ BitVec 64))
(declare-fun x2_ack!555 () (_ BitVec 64))
(declare-fun b_ack!557 () (_ BitVec 64))
(declare-fun a_ack!556 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!558) ((_ to_fp 11 53) x1_ack!554)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!554) ((_ to_fp 11 53) x2_ack!555)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!554)
                       ((_ to_fp 11 53) x0_ack!558))
               ((_ to_fp 11 53) x0_ack!558))
       ((_ to_fp 11 53) x1_ack!554)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!554)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!554)
                       ((_ to_fp 11 53) x0_ack!558)))
       ((_ to_fp 11 53) x0_ack!558)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!555)
                       ((_ to_fp 11 53) x1_ack!554))
               ((_ to_fp 11 53) x1_ack!554))
       ((_ to_fp 11 53) x2_ack!555)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!555)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!555)
                       ((_ to_fp 11 53) x1_ack!554)))
       ((_ to_fp 11 53) x1_ack!554)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!554)
                    ((_ to_fp 11 53) x0_ack!558))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!555)
                    ((_ to_fp 11 53) x1_ack!554))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!556) ((_ to_fp 11 53) b_ack!557))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!556) ((_ to_fp 11 53) x0_ack!558))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!557) ((_ to_fp 11 53) x2_ack!555))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!556) ((_ to_fp 11 53) b_ack!557))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!556) ((_ to_fp 11 53) x0_ack!558))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!556) ((_ to_fp 11 53) x1_ack!554))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!557) ((_ to_fp 11 53) x0_ack!558))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!557) ((_ to_fp 11 53) x1_ack!554)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!554) ((_ to_fp 11 53) b_ack!557))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x1_ack!554)
                               ((_ to_fp 11 53) x0_ack!558))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
