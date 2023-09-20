(declare-fun a_ack!41 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!41) ((_ to_fp 11 53) #x4086232bdd7abcd2))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!41))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40b10411a201f28e)
                                  ((_ to_fp 11 53) a_ack!41))
                          ((_ to_fp 11 53) a_ack!41))
                  ((_ to_fp 11 53) #x40b10411a201f28e))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40b10411a201f28e)
                                  ((_ to_fp 11 53) a_ack!41)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x40b10411a201f28e)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40b10411a201f28e)
                       ((_ to_fp 11 53) a_ack!41)))
       ((_ to_fp 11 53) a_ack!41)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40b10411a201f28e)
                                   ((_ to_fp 11 53) a_ack!41))
                           ((_ to_fp 11 53) a_ack!41))
                   ((_ to_fp 11 53) a_ack!41))))
  (fp.geq (fp.abs a!1)
          (fp.mul roundNearestTiesToEven
                  (fp.abs ((_ to_fp 11 53) a_ack!41))
                  ((_ to_fp 11 53) #x0010000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40b10411a201f28e)
                                   ((_ to_fp 11 53) a_ack!41))
                           ((_ to_fp 11 53) a_ack!41))
                   ((_ to_fp 11 53) a_ack!41))))
  (FPCHECK_FDIV_INVALID
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!41))
    a_ack!41)))

(check-sat)
(exit)
