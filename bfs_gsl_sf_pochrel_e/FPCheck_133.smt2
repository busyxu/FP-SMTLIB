(declare-fun a_ack!383 () (_ BitVec 64))
(declare-fun b_ack!382 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!382))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!383))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!383))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!382))
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!382) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!383) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!383) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!383) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!383))
        ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!383))
                           (fp.abs ((_ to_fp 11 53) a_ack!383))))))
  (FPCHECK_FSUB_UNDERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
