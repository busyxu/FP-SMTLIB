(declare-fun x_ack!60 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!60))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!60))
            ((_ to_fp 11 53) #x3fe5368f08461f9f))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!60))
            ((_ to_fp 11 53) #x4016a09e667f3bcd))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!60) ((_ to_fp 11 53) #x4042c26e978d4fdf))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!60) ((_ to_fp 11 53) #xc02124dd2f1a9fbe))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!60)
               ((_ to_fp 11 53) x_ack!60))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
