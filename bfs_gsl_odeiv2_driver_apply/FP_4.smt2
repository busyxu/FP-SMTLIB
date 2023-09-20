(declare-fun t_ack!63 () (_ BitVec 64))
(declare-fun t1_ack!62 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!62)
                                  ((_ to_fp 11 53) t_ack!63)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!62)
                       ((_ to_fp 11 53) t_ack!63)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!62)
                       ((_ to_fp 11 53) t_ack!63))
               ((_ to_fp 11 53) t_ack!63))
       ((_ to_fp 11 53) t1_ack!62)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!62)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!62)
                       ((_ to_fp 11 53) t_ack!63)))
       ((_ to_fp 11 53) t_ack!63)))

(check-sat)
(exit)
