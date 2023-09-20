(declare-fun x1_ack!6155 () (_ BitVec 64))
(declare-fun x0_ack!6159 () (_ BitVec 64))
(declare-fun x2_ack!6156 () (_ BitVec 64))
(declare-fun b_ack!6158 () (_ BitVec 64))
(declare-fun a_ack!6157 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6159) ((_ to_fp 11 53) x1_ack!6155)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6155) ((_ to_fp 11 53) x2_ack!6156)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6155)
                       ((_ to_fp 11 53) x0_ack!6159))
               ((_ to_fp 11 53) x0_ack!6159))
       ((_ to_fp 11 53) x1_ack!6155)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6155)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6155)
                       ((_ to_fp 11 53) x0_ack!6159)))
       ((_ to_fp 11 53) x0_ack!6159)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6156)
                       ((_ to_fp 11 53) x1_ack!6155))
               ((_ to_fp 11 53) x1_ack!6155))
       ((_ to_fp 11 53) x2_ack!6156)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6156)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6156)
                       ((_ to_fp 11 53) x1_ack!6155)))
       ((_ to_fp 11 53) x1_ack!6155)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6155)
                    ((_ to_fp 11 53) x0_ack!6159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6156)
                    ((_ to_fp 11 53) x1_ack!6155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6157) ((_ to_fp 11 53) b_ack!6158))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6157) ((_ to_fp 11 53) x0_ack!6159))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6158) ((_ to_fp 11 53) x2_ack!6156))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6157) ((_ to_fp 11 53) b_ack!6158))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6157) ((_ to_fp 11 53) x0_ack!6159))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6157) ((_ to_fp 11 53) x1_ack!6155))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6158) ((_ to_fp 11 53) x0_ack!6159))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6158) ((_ to_fp 11 53) x1_ack!6155)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6155) ((_ to_fp 11 53) b_ack!6158))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6155)
                    ((_ to_fp 11 53) x0_ack!6159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!6155)
          ((_ to_fp 11 53) x0_ack!6159))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!6155)
          ((_ to_fp 11 53) x0_ack!6159))))

(check-sat)
(exit)
