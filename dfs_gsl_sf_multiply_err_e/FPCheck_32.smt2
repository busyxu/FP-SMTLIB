(declare-fun a_ack!176 () (_ BitVec 64))
(declare-fun c_ack!174 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!175 () (_ BitVec 64))
(declare-fun b_ack!173 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!176) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!174) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!176))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!174))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!174))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!176))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!176))
            (fp.abs ((_ to_fp 11 53) c_ack!174)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!176))
       (fp.abs ((_ to_fp 11 53) c_ack!174))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!176))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!176)
                       ((_ to_fp 11 53) c_ack!174))
               ((_ to_fp 11 53) a_ack!176))
       ((_ to_fp 11 53) c_ack!174)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!174))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!176)
                       ((_ to_fp 11 53) c_ack!174))
               ((_ to_fp 11 53) c_ack!174))
       ((_ to_fp 11 53) a_ack!176)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!176)
                                  ((_ to_fp 11 53) c_ack!174)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!173)
                  ((_ to_fp 11 53) c_ack!174)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!175)
                  ((_ to_fp 11 53) a_ack!176)))))

(check-sat)
(exit)
