(declare-fun b_ack!303 () (_ BitVec 64))
(declare-fun a_ack!304 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!304) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!304)
                       ((_ to_fp 11 53) b_ack!303)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!303))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.abs ((_ to_fp 11 53) b_ack!303)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!303))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!303)))))

(check-sat)
(exit)
