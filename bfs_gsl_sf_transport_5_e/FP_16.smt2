(declare-fun a_ack!141 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!141) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!141)
                       ((_ to_fp 11 53) a_ack!141))
               ((_ to_fp 11 53) a_ack!141))
       ((_ to_fp 11 53) a_ack!141)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!141)
                       ((_ to_fp 11 53) a_ack!141))
               ((_ to_fp 11 53) a_ack!141))
       ((_ to_fp 11 53) a_ack!141)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!141)
                                   ((_ to_fp 11 53) a_ack!141))
                           ((_ to_fp 11 53) a_ack!141))
                   ((_ to_fp 11 53) a_ack!141))))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4010000000000000)))
         ((_ to_fp 11 53) #x0010000000000000))))

(check-sat)
(exit)
