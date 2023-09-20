(declare-fun a_ack!1167 () (_ BitVec 64))
(declare-fun b_ack!1166 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1166) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1166)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!1166)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1167))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!1166)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1167))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!1166) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000003
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000004
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000005
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000006
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000007
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000008
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000009
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x0000000a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x0000000b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x0000000c
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x0000000d
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x0000000e
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x0000000f
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000010
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000011
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000012
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000013
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000014
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000015
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (bvslt #x00000016
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1167))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1167)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffe
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1167)))))
      (a!5 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1167)))))
      (a!7 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffc
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1167)))))
      (a!9 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffb
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1167)))))
      (a!11 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffffa
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!13 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff9
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!15 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff8
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!17 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff7
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!19 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff6
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!21 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff5
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!23 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff4
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!25 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff3
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!27 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff2
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!29 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff1
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!31 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff0
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!33 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffef
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!35 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffee
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!37 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffed
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!39 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffec
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!41 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffeb
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167)))))
      (a!43 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffea
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1167))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1166)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1166)))
                   (fp.div roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!2 a!4)
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!1166)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!1166)))
                   (fp.div roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!6 a!8)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!10 a!12)
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!14 a!16)
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!19
                            ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!18 a!20)
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!23
                            ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!22 a!24)
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!27
                            ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!26 a!28)
                    (fp.mul roundNearestTiesToEven
                            a!28
                            (fp.div roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!28
                            (fp.div roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!31
                            ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!30 a!32)
                    (fp.mul roundNearestTiesToEven
                            a!32
                            (fp.div roundNearestTiesToEven
                                    a!33
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!36 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!32
                            (fp.div roundNearestTiesToEven
                                    a!33
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!35
                            ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!38 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!34 a!36)
                    (fp.mul roundNearestTiesToEven
                            a!36
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!40 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!36
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!39
                            ((_ to_fp 11 53) b_ack!1166)))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!38 a!40)
                    (fp.mul roundNearestTiesToEven
                            a!40
                            (fp.div roundNearestTiesToEven
                                    a!41
                                    ((_ to_fp 11 53) b_ack!1166)))))
      (a!44 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!40
                            (fp.div roundNearestTiesToEven
                                    a!41
                                    ((_ to_fp 11 53) b_ack!1166)))
                    (fp.div roundNearestTiesToEven
                            a!43
                            ((_ to_fp 11 53) b_ack!1166)))))
  (FPCHECK_FADD_OVERFLOW a!42 a!44))))))))))))))

(check-sat)
(exit)
