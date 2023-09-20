(declare-fun c_ack!430 () (_ BitVec 64))
(declare-fun a_ack!431 () (_ BitVec 32))
(declare-fun b_ack!429 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!430))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!429 a_ack!431)))
(assert (not (bvslt a_ack!431 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!429))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!430))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!430))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!430)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!430))
                           (fp.abs ((_ to_fp 11 53) c_ack!430)))
                   (fp.abs ((_ to_fp 11 53) c_ack!430)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!430)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!430)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!430))
                           (fp.abs ((_ to_fp 11 53) c_ack!430)))
                   (fp.abs ((_ to_fp 11 53) c_ack!430)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!430)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!430))
                           (fp.abs ((_ to_fp 11 53) c_ack!430)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!430))
                           (fp.abs ((_ to_fp 11 53) c_ack!430)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!430))
                           (fp.abs ((_ to_fp 11 53) c_ack!430)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000)))
    #xbff0000000000000)))

(check-sat)
(exit)
