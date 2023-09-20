(declare-fun a_ack!544 () (_ BitVec 64))
(declare-fun c_ack!542 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!543 () (_ BitVec 64))
(declare-fun b_ack!541 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!542) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!544))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!542))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!542))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!544))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!544))
       (fp.abs ((_ to_fp 11 53) c_ack!542))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!544))
            (fp.abs ((_ to_fp 11 53) c_ack!542)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!542))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!544)
                                  ((_ to_fp 11 53) c_ack!542)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!544)
                                   ((_ to_fp 11 53) c_ack!542)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!541)
                                   ((_ to_fp 11 53) c_ack!542)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!543)
                                   ((_ to_fp 11 53) a_ack!544))))))
  (FPCHECK_FADD_ACCURACY a!1 a!2)))

(check-sat)
(exit)
