(declare-fun x_hi_ack!110 () (_ BitVec 64))
(declare-fun x_lo_ack!111 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) x_lo_ack!111) ((_ to_fp 11 53) x_hi_ack!110))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!111)
                       ((_ to_fp 11 53) x_hi_ack!110))
               ((_ to_fp 11 53) x_lo_ack!111))
       ((_ to_fp 11 53) x_hi_ack!110)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) x_lo_ack!111)
                       ((_ to_fp 11 53) x_hi_ack!110))
               ((_ to_fp 11 53) x_hi_ack!110))
       ((_ to_fp 11 53) x_lo_ack!111)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_lo_ack!111))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_lo_ack!111))))
(let ((a!2 (fp.isNaN (fp.abs (fp.add roundNearestTiesToEven
                                     a!1
                                     ((_ to_fp 11 53) #xc014000000000000)))))
      (a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #xc014000000000000)))
                  ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (not (or a!2 a!3))))))

(check-sat)
(exit)
