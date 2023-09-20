(declare-fun x1_ack!1980 () (_ BitVec 64))
(declare-fun x0_ack!1987 () (_ BitVec 64))
(declare-fun x2_ack!1981 () (_ BitVec 64))
(declare-fun b_ack!1986 () (_ BitVec 64))
(declare-fun a_ack!1985 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!1982 () (_ BitVec 64))
(declare-fun y1_ack!1983 () (_ BitVec 64))
(declare-fun y2_ack!1984 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1987) ((_ to_fp 11 53) x1_ack!1980)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1980) ((_ to_fp 11 53) x2_ack!1981)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1980)
                       ((_ to_fp 11 53) x0_ack!1987))
               ((_ to_fp 11 53) x0_ack!1987))
       ((_ to_fp 11 53) x1_ack!1980)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1980)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1980)
                       ((_ to_fp 11 53) x0_ack!1987)))
       ((_ to_fp 11 53) x0_ack!1987)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1981)
                       ((_ to_fp 11 53) x1_ack!1980))
               ((_ to_fp 11 53) x1_ack!1980))
       ((_ to_fp 11 53) x2_ack!1981)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1981)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1981)
                       ((_ to_fp 11 53) x1_ack!1980)))
       ((_ to_fp 11 53) x1_ack!1980)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1980)
                    ((_ to_fp 11 53) x0_ack!1987))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1981)
                    ((_ to_fp 11 53) x1_ack!1980))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1985) ((_ to_fp 11 53) b_ack!1986))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1985) ((_ to_fp 11 53) x0_ack!1987))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1986) ((_ to_fp 11 53) x2_ack!1981))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1985) ((_ to_fp 11 53) b_ack!1986))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1985) ((_ to_fp 11 53) x0_ack!1987))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1985) ((_ to_fp 11 53) x1_ack!1980))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1986) ((_ to_fp 11 53) x0_ack!1987))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1986) ((_ to_fp 11 53) x1_ack!1980)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1980) ((_ to_fp 11 53) b_ack!1986))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1980)
                    ((_ to_fp 11 53) x0_ack!1987))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1981)
                    ((_ to_fp 11 53) x1_ack!1980))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1984)
                           ((_ to_fp 11 53) y1_ack!1983))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1981)
                                   ((_ to_fp 11 53) x1_ack!1980)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1983)
                           ((_ to_fp 11 53) y0_ack!1982))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1980)
                                   ((_ to_fp 11 53) x0_ack!1987)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1981)
                                   ((_ to_fp 11 53) x1_ack!1980))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1980)
                                   ((_ to_fp 11 53) x0_ack!1987))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1981)
                    ((_ to_fp 11 53) x1_ack!1980))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
