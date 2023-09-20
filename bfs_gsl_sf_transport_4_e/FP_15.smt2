(declare-fun a_ack!135 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!135) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!135)
                       ((_ to_fp 11 53) a_ack!135))
               ((_ to_fp 11 53) a_ack!135))
       ((_ to_fp 11 53) a_ack!135)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!135)
                       ((_ to_fp 11 53) a_ack!135))
               ((_ to_fp 11 53) a_ack!135))
       ((_ to_fp 11 53) a_ack!135)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!135)
                                   ((_ to_fp 11 53) a_ack!135))
                           ((_ to_fp 11 53) a_ack!135))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x0010000000000000))))

(check-sat)
(exit)
