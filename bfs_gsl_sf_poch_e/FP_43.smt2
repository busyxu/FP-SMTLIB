(declare-fun b_ack!488 () (_ BitVec 64))
(declare-fun a_ack!489 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!488) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!488) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!489) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!489)
                    ((_ to_fp 11 53) b_ack!488))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!489) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!489) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!489)
                       ((_ to_fp 11 53) b_ack!488))
               ((_ to_fp 11 53) a_ack!489))
       ((_ to_fp 11 53) b_ack!488)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!489)
                       ((_ to_fp 11 53) b_ack!488))
               ((_ to_fp 11 53) b_ack!488))
       ((_ to_fp 11 53) a_ack!489)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!489)
                                   ((_ to_fp 11 53) b_ack!488))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))

(check-sat)
(exit)
