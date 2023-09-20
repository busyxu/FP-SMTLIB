(declare-fun x1_ack!2143 () (_ BitVec 64))
(declare-fun x0_ack!2150 () (_ BitVec 64))
(declare-fun x2_ack!2144 () (_ BitVec 64))
(declare-fun b_ack!2149 () (_ BitVec 64))
(declare-fun a_ack!2148 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2145 () (_ BitVec 64))
(declare-fun y1_ack!2146 () (_ BitVec 64))
(declare-fun y2_ack!2147 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2150) ((_ to_fp 11 53) x1_ack!2143)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2143) ((_ to_fp 11 53) x2_ack!2144)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2143)
                       ((_ to_fp 11 53) x0_ack!2150))
               ((_ to_fp 11 53) x0_ack!2150))
       ((_ to_fp 11 53) x1_ack!2143)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2143)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2143)
                       ((_ to_fp 11 53) x0_ack!2150)))
       ((_ to_fp 11 53) x0_ack!2150)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2144)
                       ((_ to_fp 11 53) x1_ack!2143))
               ((_ to_fp 11 53) x1_ack!2143))
       ((_ to_fp 11 53) x2_ack!2144)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2144)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2144)
                       ((_ to_fp 11 53) x1_ack!2143)))
       ((_ to_fp 11 53) x1_ack!2143)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2143)
                    ((_ to_fp 11 53) x0_ack!2150))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2144)
                    ((_ to_fp 11 53) x1_ack!2143))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2148) ((_ to_fp 11 53) b_ack!2149))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2148) ((_ to_fp 11 53) x0_ack!2150))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2149) ((_ to_fp 11 53) x2_ack!2144))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2148) ((_ to_fp 11 53) b_ack!2149))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2148) ((_ to_fp 11 53) x0_ack!2150))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2148) ((_ to_fp 11 53) x1_ack!2143))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2149) ((_ to_fp 11 53) x0_ack!2150))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2149) ((_ to_fp 11 53) x1_ack!2143)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2143) ((_ to_fp 11 53) b_ack!2149))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2143)
                    ((_ to_fp 11 53) x0_ack!2150))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2144)
                    ((_ to_fp 11 53) x1_ack!2143))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2147)
                           ((_ to_fp 11 53) y1_ack!2146))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2144)
                                   ((_ to_fp 11 53) x1_ack!2143)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2146)
                           ((_ to_fp 11 53) y0_ack!2145))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2143)
                                   ((_ to_fp 11 53) x0_ack!2150)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2144)
                                   ((_ to_fp 11 53) x1_ack!2143))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2143)
                                   ((_ to_fp 11 53) x0_ack!2150))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2144)
                    ((_ to_fp 11 53) x1_ack!2143)))))))

(check-sat)
(exit)
