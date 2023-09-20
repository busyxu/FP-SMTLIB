(declare-fun a_ack!536 () (_ BitVec 64))
(declare-fun c_ack!534 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!535 () (_ BitVec 64))
(declare-fun b_ack!533 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!534) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!536))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!534))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!534))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!536))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!536))
       (fp.abs ((_ to_fp 11 53) c_ack!534))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!536))
            (fp.abs ((_ to_fp 11 53) c_ack!534)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!534))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!536)
                                  ((_ to_fp 11 53) c_ack!534)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!536)
                                   ((_ to_fp 11 53) c_ack!534)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!533)
                                   ((_ to_fp 11 53) c_ack!534)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!535)
                                   ((_ to_fp 11 53) a_ack!536))))))
  (FPCHECK_FADD_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
